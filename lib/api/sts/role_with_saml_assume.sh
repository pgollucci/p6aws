p6_aws_sts_role_with_saml_assume() {
    local role_arn="$1"
    local principal_arn="$2"
    local saml_assertion="$3"
    shift 3

    p6_run_write_cmd aws sts assume-role-with-saml --role-arn $role_arn --principal-arn $principal_arn --saml-assertion $saml_assertion "$@"
}
