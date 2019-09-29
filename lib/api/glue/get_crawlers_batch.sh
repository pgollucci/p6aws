######################################################################
#<
#
# Function:
#      = p6_aws_glue_get_crawlers_batch(crawler_names)
#
# Arg(s):
#    crawler_names - 
#
#
#>
######################################################################
p6_aws_glue_get_crawlers_batch() {
    local crawler_names="$1"
    shift 1

    p6_run_read_cmd aws glue batch-get-crawlers --crawler-names $crawler_names "$@"
}