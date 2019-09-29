######################################################################
#<
#
# Function:
#      = p6_aws_glue_crawler_schedule_start(crawler_name)
#
# Arg(s):
#    crawler_name - 
#
#
#>
######################################################################
p6_aws_glue_crawler_schedule_start() {
    local crawler_name="$1"
    shift 1

    p6_run_write_cmd aws glue start-crawler-schedule --crawler-name $crawler_name "$@"
}