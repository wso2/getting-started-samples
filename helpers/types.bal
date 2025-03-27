// AUTO-GENERATED FILE.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/constraint;
import ballerina/http;


public type headers_response record {|
    map<string[]> headers;
|};

public type specific_headers_response record {|
    map<string> headers;
|};
public type ua_response record {|
    string user\-agent?;
|};

public type ip_response record {|
    @constraint:String {maxLength: 64, pattern: re `^[0-9\.]+$`}
    string origin?;
|};

public type Error_responseBadRequest record {|
    *http:BadRequest;
    error_response body;
|};

public type Base64_responseOk record {|
    *http:Ok;
    base64_response body;
|};

public type error_response record {|
    @constraint:String {maxLength: 50}
    string message?;
    @constraint:String {maxLength: 10}
    string code?;
|};

public type uuid_response record {|
    @constraint:String {maxLength: 36, minLength: 36, pattern: re `^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$`}
    string uuid?;
|};

public type Error_responseNotFound record {|
    *http:NotFound;
    error_response body;
|};

public type Error_serverFailure record {|
    *http:InternalServerError;
    error_response body;
|};

public type base64_response record {|
    @constraint:String {maxLength: 100, pattern: re `^[0-9\.]+$`}
    string value?;
|};

type ai_spelling_payload record {
    @constraint:String {maxLength: 100, pattern: re `^[\w\s]+$`}
    string text;
};

public type ai_spelling_response record {
    @constraint:String {maxLength: 150, pattern: re `^[\w\s]+$`}
    string correctedText;
};

public type ai_spelling_responseOk record {|
    *http:Ok;
    ai_spelling_response body;
|};