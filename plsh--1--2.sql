CREATE FUNCTION plsh_inline_handler(internal) RETURNS void
    AS '$libdir/plsh'
    LANGUAGE C;

CREATE OR REPLACE LANGUAGE plsh
    HANDLER plsh_handler
    INLINE plsh_inline_handler
    VALIDATOR plsh_validator;
