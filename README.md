**Project : Cost-Optimized Storage with Lifecycle Policies** using **GCP** and **Terraform**.

---
#### 4. **`README.md`**
This file provides an overview of the project, prerequisites, deployment steps, and cleanup instructions.

```markdown
# Cost-Optimized Storage with Lifecycle Policies

This project implements **storage lifecycle policies** to automatically transition data between storage classes based on access frequency, reducing storage costs.

---

## **Prerequisites**
1. **Google Cloud Platform (GCP) Account**:
   - A GCP project with billing enabled.
2. **Google Cloud SDK**:
   - Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install).
3. **Terraform**:
   - Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
### **Folder Structure**
```

![image](https://github.com/user-attachments/assets/d0af5bc5-823f-4175-94aa-ae6e816cb1e2)

---

## **Deployment Steps**

### **1. Clone the Repository**
```bash
git clone <repository-url>
cd cost-optimized-storage
```

### **2. Initialize Terraform**
```bash
terraform init
```

### **3. Apply Terraform Configuration**
```bash
terraform apply
```
- Provide the required variables (e.g., `project_id`, `region`, `bucket_name`) when prompted.

---

## **Lifecycle Rules**
The following lifecycle rules are applied to the bucket:
1. **Transition to Nearline Storage** after **30 days**.
2. **Transition to Coldline Storage** after **60 days**.
3. **Transition to Archive Storage** after **90 days**.
4. **Delete objects** after **365 days**.

---

## **Cost Savings**
- **Automated Transitions**: Automatically moves infrequently accessed data to lower-cost storage classes.
- **Reduced Costs**: Minimizes storage costs without manual intervention.
- **Terraform Automation**: Simplifies and standardizes lifecycle rule management.

---

## **Cleanup**
To destroy the infrastructure:
```bash
terraform destroy
```

---

## **Customization**
- Update the `lifecycle_rule` blocks in `main.tf` to adjust transition and deletion times.
- Modify the `bucket_name` and `region` variables to suit your requirements.

---

## **Outputs**
- **Bucket Name**: `google_storage_bucket.cost_optimized_bucket.name`
- **Bucket URL**: `google_storage_bucket.cost_optimized_bucket.url`
```

---

### **Deployment Steps**

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd cost-optimized-storage
   ```

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Apply Terraform Configuration**:
   ```bash
   terraform apply
   ```
   - Provide the required variables (e.g., `project_id`, `region`, `bucket_name`) when prompted.

---

### **Lifecycle Rules**
The lifecycle rules defined in `main.tf`:
1. **Transition to Nearline Storage** after **30 days**.
2. **Transition to Coldline Storage** after **60 days**.
3. **Transition to Archive Storage** after **90 days**.
4. **Delete objects** after **365 days**.

---

### **Cost Savings**
- **Automated Transitions**: Automatically moves infrequently accessed data to lower-cost storage classes.
- **Reduced Costs**: Minimizes storage costs without manual intervention.
- **Terraform Automation**: Simplifies and standardizes lifecycle rule management.

---

This folder structure and file setup provide a complete implementation for **Project : Cost-Optimized Storage with Lifecycle Policies**. You can customize the lifecycle rules, bucket name, and region as needed.
