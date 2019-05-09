p6_aws_signer_signing_profile_get() {
    local profile_name="$1"
    shift 1

    p6_log_and_run aws signer get-signing-profile --profile-name $profile_name "$@"
}
