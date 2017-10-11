#include <stdlib.h>
#include <inttypes.h>

#include "errors.h"
#include "nested.h"

int nested_nores (void)
{
    int err = EOK;
    int foo = rand();
    if (foo == 0)
    {
        err = EFOO;
    }
    else
    {
        int bar = rand();
        if (bar == 0)
        {
            err = EBAR;
        }
        else
        {
            int baz = rand();
            if (baz == 0)
            {
                err = EBAZ;
            }
        }
    }

    return err;
}

int nested_res (void)
{
    int err = EOK;
    uint8_t *foo_p = (uint8_t *)malloc(sizeof(uint8_t));
    if (foo_p == NULL)
    {
        err = EFOO;
    }
    else
    {
        int bar = rand();
        if (bar == 0)
        {
            err = EBAR;
        }
        else
        {
            int baz = rand();
            if (baz == 0)
            {
                err = EBAZ;
            }
        }
        free(foo_p);
    }

    return err;
}
