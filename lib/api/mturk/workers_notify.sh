######################################################################
#<
#
# Function:
#      = p6_aws_mturk_workers_notify(subject, message_text, worker_ids)
#
# Arg(s):
#    subject - 
#    message_text - 
#    worker_ids - 
#
#
#>
######################################################################
p6_aws_mturk_workers_notify() {
    local subject="$1"
    local message_text="$2"
    local worker_ids="$3"
    shift 3

    p6_run_write_cmd aws mturk notify-workers --subject $subject --message-text $message_text --worker-ids $worker_ids "$@"
}