# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_aws_profile_cred_add()
#
#>
######################################################################
p6_aws_profile_cred_add() {
    local cred_file="$1"
    local profile="$2"
    local access_key_id="$3"
    local secret_access_key="$4"
    local session_token="$5"
    local expiration="$6"

    if ! p6_file_exists "$cred_file" || ! p6_file_contains "$profile" "$cred_file"; then
        p6_aws_profile__debug "cred_add(): adding [$profile] -> [$cred_file]"

        p6_aws_template_process "sts/cred" \
            "PROFILE=$profile" \
            "AWS_ACCESS_KEY=$access_key_id" \
            "AWS_SECRET_ACCESS_KEY=$secret_access_key" \
            "AWS_SESSION_TOKEN=$session_token" \
            "EXPIRATION=$expiration" \
            >>"$cred_file"
    fi

    p6_return_void
}
