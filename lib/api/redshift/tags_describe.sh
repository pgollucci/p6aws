######################################################################
#<
#
# Function:
#      = p6_aws_redshift_tags_describe()
#
#
#
#>
######################################################################
p6_aws_redshift_tags_describe() {

    p6_run_read_cmd aws redshift describe-tags "$@"
}