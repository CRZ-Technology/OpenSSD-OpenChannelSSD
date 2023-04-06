/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * include/linker_lists.h
 *
 * Implementation of linker-generated arrays
 *
 * Copyright (C) 2012 Marek Vasut <marex@denx.de>
 */

#ifndef __LINKER_LISTS_H__
#define __LINKER_LISTS_H__

/**
 * llsym() - Access a linker-generated array entry
 * @_type:	Data type of the entry
 * @_name:	Name of the entry
 * @_list:	name of the list. Should contain only characters allowed
 *		in a C variable name!
 */
#define llsym(_type, _name, _list) \
		((_type *)&_u_boot_list_2_##_list##_2_##_name)

/**
 * ll_entry_declare() - Declare linker-generated array entry
 * @_type:	Data type of the entry
 * @_name:	Name of the entry
 * @_list:	name of the list. Should contain only characters allowed
 *		in a C variable name!
 *
 * This macro declares a variable that is placed into a linker-generated
 * array. This is a basic building block for more advanced use of linker-
 * generated arrays. The user is expected to build their own macro wrapper
 * around this one.
 *
 * A variable declared using this macro must be compile-time initialized.
 *
 * Special precaution must be made when using this macro:
 *
 * 1) The _type must not contain the "static" keyword, otherwise the
 *    entry is generated and can be iterated but is listed in the map
 *    file and cannot be retrieved by name.
 *
 * 2) In case a section is declared that contains some array elements AND
 *    a subsection of this section is declared and contains some elements,
 *    it is imperative that the elements are of the same type.
 *
 * 3) In case an outer section is declared that contains some array elements
 *    AND an inner subsection of this section is declared and contains some
 *    elements, then when traversing the outer section, even the elements of
 *    the inner sections are present in the array.
 *
 * Example:
 *
 * ::
 *
 *   ll_entry_declare(struct my_sub_cmd, my_sub_cmd, cmd_sub) = {
 *           .x = 3,
 *           .y = 4,
 *   };
 */
#define ll_entry_declare(_type, _name, _list)				\
	_type _u_boot_list_2_##_list##_2_##_name __aligned(4)		\
			__attribute__((unused,				\
			section(".u_boot_list_2_"#_list"_2_"#_name)))


/**
 * ll_entry_start() - Point to first entry of linker-generated array
 * @_type:	Data type of the entry
 * @_list:	Name of the list in which this entry is placed
 *
 * This function returns ``(_type *)`` pointer to the very first entry of a
 * linker-generated array placed into subsection of .u_boot_list section
 * specified by _list argument.
 *
 * Since this macro defines an array start symbol, its leftmost index
 * must be 2 and its rightmost index must be 1.
 *
 * Example:
 *
 * ::
 *
 *   struct my_sub_cmd *msc = ll_entry_start(struct my_sub_cmd, cmd_sub);
 */
#define ll_entry_start(_type, _list)					\
({									\
	static char start[0] __attribute__((unused,	\
		section(".u_boot_list_2_"#_list"_1"))) ;			\
	(_type *)&start;						\
})

/**
 * ll_entry_end() - Point after last entry of linker-generated array
 * @_type:	Data type of the entry
 * @_list:	Name of the list in which this entry is placed
 *		(with underscores instead of dots)
 *
 * This function returns ``(_type *)`` pointer after the very last entry of
 * a linker-generated array placed into subsection of .u_boot_list
 * section specified by _list argument.
 *
 * Since this macro defines an array end symbol, its leftmost index
 * must be 2 and its rightmost index must be 3.
 *
 * Example:
 *
 * ::
 *
 *   struct my_sub_cmd *msc = ll_entry_end(struct my_sub_cmd, cmd_sub);
 */
#define ll_entry_end(_type, _list)					\
({									\
	static char end[0]  __attribute__((unused,		\
		section(".u_boot_list_2_"#_list"_3")));			\
	(_type *)&end;							\
})
/**
 * ll_entry_count() - Return the number of elements in linker-generated array
 * @_type:	Data type of the entry
 * @_list:	Name of the list of which the number of elements is computed
 *
 * This function returns the number of elements of a linker-generated array
 * placed into subsection of .u_boot_list section specified by _list
 * argument. The result is of an unsigned int type.
 *
 * Example:
 *
 * ::
 *
 *   int i;
 *   const unsigned int count = ll_entry_count(struct my_sub_cmd, cmd_sub);
 *   struct my_sub_cmd *msc = ll_entry_start(struct my_sub_cmd, cmd_sub);
 *   for (i = 0; i < count; i++, msc++)
 *           printf("Entry %i, x=%i y=%i\n", i, msc->x, msc->y);
 */
#define ll_entry_count(_type, _list)					\
	({								\
		_type *start = ll_entry_start(_type, _list);		\
		_type *end = ll_entry_end(_type, _list);		\
		unsigned int _ll_result = end - start;			\
		_ll_result;						\
	})

#endif	/* __LINKER_LISTS_H__ */

