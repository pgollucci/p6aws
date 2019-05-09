p6_aws_signer_signing_profile_cancel() {
    local profile_name="$1"
    shift 1

    p6_log_or_run aws signer cancel-signing-profile --profile-name $profile_name "$@"
}
