######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_data_put_message_batch(messages)
#
# Arg(s):
#    messages - 
#
#
#>
######################################################################
p6_aws_iotevents_data_put_message_batch() {
    local messages="$1"
    shift 1

    p6_run_write_cmd aws iotevents-data batch-put-message --messages $messages "$@"
}