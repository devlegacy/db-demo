# Notes

```bash
  touch `date +%F-%I-%M-%S`-filanme.sql
  # Recommend
  touch `date +%s`-filanme.sql
```

```bash
  # Backup with postgres
  pg_dump -U [user] [dbname] > ./postgresql/`date +%s`_backup_[dbname].sql
  # example
  pg_dump -U postgres demo > ./postgresql/`date +%s`_backup_demo.sql
```
