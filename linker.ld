/* Highest address of the user mode stack */
_estack = 0x20020000;    /* end of RAM */

/* Memory area */
MEMORY
{
    FLASH (rx): ORIGIN = 0x8000000, LENGTH = 512k
    RAM (xrw): ORIGIN = 0x20000000, LENGTH = 128k
}
