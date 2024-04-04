/*
** EPITECH PROJECT, 2024
** Raisintine
** File description:
** test
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>

test(crit, check)
{
    int ac = 0;

    cr_assert(main(ac) == 84);
}
