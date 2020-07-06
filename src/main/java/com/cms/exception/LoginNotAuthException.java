package com.cms.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.UNAUTHORIZED, reason = "登录身份失效",code = HttpStatus.INTERNAL_SERVER_ERROR)
public class LoginNotAuthException extends RuntimeException {
}
