if [ "${args[--enable-api]}" ]
then
    gcloud services enable cloudfunctions.googleapis.com --project "${args[--project]}" --quiet
fi

if [ "${args[--only-name]}" ]
then
    gcloud functions list --project "${args[--project]}" --format 'value(name)'
else
    gcloud functions list --project "${args[--project]}"
fi

