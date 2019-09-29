######################################################################
#<
#
# Function:
#      = p6_aws_sqs_queue_create(queue_name)
#
# Arg(s):
#    queue_name - 
#
#
#>
######################################################################
p6_aws_sqs_queue_create() {
    local queue_name="$1"
    shift 1

    p6_run_write_cmd aws sqs create-queue --queue-name $queue_name "$@"
}