# terraform-backend-azurerm

🐇🐇🐇 Azure Blob StorageをTerraformのBackendとして利用して、Terraformの状態を管理するためのリポジトリです。  
GitHub Actionsを利用して、Terraformの状態をAzure Blob Storageに保存しながら、リソースのプロビジョニングを行います。  

## 準備

以下の内容をGitHub Secretsに設定してください。  

| Name | Description |
| --- | --- |
| STORAGE_ACCOUNT_NAME | Azure Blob Storageのアカウント名 (バックエンドサービス) |
| AZURE_STORAGE_ACCESS_KEY | Azure Blob Storageのアカウントキー (バックエンドサービス) |
| CONTAINER_NAME | Azure Blob Storageのコンテナ名 (バックエンドサービス) |
| TFVARS | Terraformの変数ファイル |

---

`terraform.tfvars`に必要なクライアントID、クライアントシークレット、サブスクリプションID、テナントIDは以下のコマンドでサービスプリンシパルを作成してください。  

```shell
az ad sp create-for-rbac --name "サービスプリンシパル名" --role contributor --scopes /subscriptions/サブスクリプションID --sdk-auth
```

---

mainブランチにマージすると、GitHub ActionsがTerraformのプロビジョニングを行います。  
自動で仮想マシンが作成され、Terraformの状態がAzure Blob Storageに保存されます。  
