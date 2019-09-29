######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_distribution_with_tags_create(distribution_config_with_tags)
#
# Arg(s):
#    distribution_config_with_tags - 
#
#
#>
######################################################################
p6_aws_cloudfront_distribution_with_tags_create() {
    local distribution_config_with_tags="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-distribution-with-tags --distribution-config-with-tags $distribution_config_with_tags "$@"
}