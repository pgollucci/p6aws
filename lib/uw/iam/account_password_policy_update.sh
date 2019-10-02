######################################################################
#<
#
# Function:
#	p6_aws_iam_symbols()
#
#>
######################################################################
p6_aws_iam_symbols() {
    
    cond_log_and_run aws iam update-account-password-policy --require-symbols "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iam_numbers()
#
#>
######################################################################
p6_aws_iam_numbers() {
    
    cond_log_and_run aws iam update-account-password-policy --require-numbers "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iam_uppercase_characters()
#
#>
######################################################################
p6_aws_iam_uppercase_characters() {
    
    cond_log_and_run aws iam update-account-password-policy --require-uppercase-characters "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iam_lowercase_characters()
#
#>
######################################################################
p6_aws_iam_lowercase_characters() {
    
    cond_log_and_run aws iam update-account-password-policy --require-lowercase-characters "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iam_users_to_change_password()
#
#>
######################################################################
p6_aws_iam_users_to_change_password() {
    
    cond_log_and_run aws iam update-account-password-policy --allow-users-to-change-password "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iam_expiry()
#
#>
######################################################################
p6_aws_iam_expiry() {
    
    cond_log_and_run aws iam update-account-password-policy --hard-expiry "$@"
}