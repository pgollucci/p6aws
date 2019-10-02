######################################################################
#<
#
# Function:
#	p6_aws_glue_crawlers_list()
#
#>
######################################################################
p6_aws_glue_crawlers_list() {

    p6_run_read_cmd aws glue list-crawlers "$@"
}