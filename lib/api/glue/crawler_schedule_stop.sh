######################################################################
#<
#
# Function:
#	p6_aws_glue_crawler_schedule_stop(crawler_name)
#
#  Args:
#	crawler_name - 
#
#>
######################################################################
p6_aws_glue_crawler_schedule_stop() {
    local crawler_name="$1"
    shift 1

    p6_run_write_cmd aws glue stop-crawler-schedule --crawler-name $crawler_name "$@"
}