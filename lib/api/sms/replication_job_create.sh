######################################################################
#<
#
# Function:
#      = p6_aws_sms_replication_job_create(server_id, seed_replication_time)
#
# Arg(s):
#    server_id - 
#    seed_replication_time - 
#
#
#>
######################################################################
p6_aws_sms_replication_job_create() {
    local server_id="$1"
    local seed_replication_time="$2"
    shift 2

    p6_run_write_cmd aws sms create-replication-job --server-id $server_id --seed-replication-time $seed_replication_time "$@"
}