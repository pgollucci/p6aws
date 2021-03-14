######################################################################
#<
#
# Function: p6_aws_util_env_output([val=json])
#
#  Args:
#	OPTIONAL val - [json]
#
#>
######################################################################
p6_aws_util_env_output() {
    local val="${1:-json}"

    p6_aws_env_output_active "$val" >/dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_util_env_org([val=$P6_AWS_ORG])
#
#  Args:
#	OPTIONAL val - [$P6_AWS_ORG]
#
#>
######################################################################
p6_aws_util_env_org() {
    local val="${1:-$P6_AWS_ORG}"

    p6_aws_env_org_active "$val" >/dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_util_env_profile([val=])
#
#  Args:
#	OPTIONAL val - []
#
#>
######################################################################
p6_aws_util_env_profile() {
    local val="${1:-}"

    p6_aws_env_default_profile_active "$val" >/dev/null
    p6_aws_env_profile_active "$val" >/dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_util_env_region([val=us-east-1])
#
#  Args:
#	OPTIONAL val - [us-east-1]
#
#>
######################################################################
p6_aws_util_env_region() {
    local val="${1:-us-east-1}"

    p6_aws_env_default_region_active "$val" >/dev/null
    p6_aws_env_region_active "$val" >/dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: str config_file = p6_aws_util_env_config_file([org=])
#
#  Args:
#	OPTIONAL org - []
#
#  Returns:
#	str - config_file
#
#>
######################################################################
p6_aws_util_env_config_file() {
    local org="${1:-}"

    local default="$HOME/.aws/config"
    local config_file="$default-$org"

    p6_aws_env_config_file_active "$config_file" >/dev/null

    p6_return_str "$config_file"
}

######################################################################
#<
#
# Function: str cred_file = p6_aws_util_env_shared_credentials_file([org=])
#
#  Args:
#	OPTIONAL org - []
#
#  Returns:
#	str - cred_file
#
#>
######################################################################
p6_aws_util_env_shared_credentials_file() {
    local org="${1:-}"

    local default="$HOME/.aws/credentials"
    local cred_file="$default-$org"

    p6_aws_env_shared_credentials_file_active "$cred_file" >/dev/null

    p6_return_str "$cred_file"
}
