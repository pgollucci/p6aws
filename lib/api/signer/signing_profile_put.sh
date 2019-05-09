p6_aws_signer_signing_profile_put() {
    local profile_name="$1"
    local signing_material="$2"
    local platform_id="$3"
    shift 3

    p6_log_or_run aws signer put-signing-profile --profile-name $profile_name --signing-material $signing_material --platform-id $platform_id "$@"
}
