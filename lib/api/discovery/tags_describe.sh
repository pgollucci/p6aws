######################################################################
#<
#
# Function:
#      = p6_aws_discovery_tags_describe()
#
#
#
#>
######################################################################
p6_aws_discovery_tags_describe() {

    p6_run_read_cmd aws discovery describe-tags "$@"
}