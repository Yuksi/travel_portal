package com.netcracker.exception;

/**
 * @author Oveian Egor
 */

public class DuplicateEntityException extends RuntimeException {
    public DuplicateEntityException() {
        super();
    }

    public DuplicateEntityException(String message) {
        super(message);
    }
}
