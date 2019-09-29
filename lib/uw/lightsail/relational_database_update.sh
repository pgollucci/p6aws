######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_master_user_password(relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_master_user_password() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --rotate-master-user-password "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_backup_retention(relational_database_name, relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_backup_retention() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --enable-backup-retention "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_backup_retention(relational_database_name, relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_backup_retention() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --disable-backup-retention "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_accessible(relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_accessible() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --publicly-accessible "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_immediately(relational_database_name)
#
# Arg(s):
#    relational_database_name - 
#
#
#>
######################################################################
p6_aws_lightsail_immediately() {
        local relational_database_name="$1"
        shift 1

    cond_log_and_run aws lightsail update-relational-database --relational-database-name $relational_database_name --apply-immediately "$@"
}
