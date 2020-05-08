CLASS zcl_handler DEFINITION PUBLIC.

  PUBLIC SECTION.

    METHODS:
      run
        RETURNING
          VALUE(response) TYPE string
        RAISING
          cx_static_check.

ENDCLASS.

CLASS zcl_handler IMPLEMENTATION.

  METHOD run.
    response = |hello world 2|.
    write / |test write|.
  ENDMETHOD.

ENDCLASS.