######################################################################
#<
#
# Function:
#	p6_aws_glue_crawler_start(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_glue_crawler_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue start-crawler --name $name "$@"
}