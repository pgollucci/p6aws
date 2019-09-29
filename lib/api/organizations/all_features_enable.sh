######################################################################
#<
#
# Function:
#      = p6_aws_organizations_all_features_enable()
#
#
#
#>
######################################################################
p6_aws_organizations_all_features_enable() {

    p6_run_write_cmd aws organizations enable-all-features "$@"
}