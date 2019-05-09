p6_aws_ecs_tasks_list() {

    p6_log_and_run aws ecs list-tasks "$@"
}
