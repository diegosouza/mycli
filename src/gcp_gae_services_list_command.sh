if [ "${args[--only-service]}" ]
then
    gcloud app services list --project "${args[--project]}" --format 'value(id)'
else
    gcloud app services list --project "${args[--project]}"
fi
