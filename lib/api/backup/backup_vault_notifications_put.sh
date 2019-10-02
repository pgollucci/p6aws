######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_vault_notifications_put(backup_vault_name, sns_topic_arn, backup_vault_events)
#
#  Args:
#	backup_vault_name - 
#	sns_topic_arn - 
#	backup_vault_events - 
#
#>
######################################################################
p6_aws_backup_backup_vault_notifications_put() {
    local backup_vault_name="$1"
    local sns_topic_arn="$2"
    local backup_vault_events="$3"
    shift 3

    p6_run_write_cmd aws backup put-backup-vault-notifications --backup-vault-name $backup_vault_name --sns-topic-arn $sns_topic_arn --backup-vault-events $backup_vault_events "$@"
}