######################################################################
#<
#
# Function:
#	p6_aws_redshift_account_attributes_describe()
#
#>
######################################################################
p6_aws_redshift_account_attributes_describe() {

    p6_run_read_cmd aws redshift describe-account-attributes "$@"
}