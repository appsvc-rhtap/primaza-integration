#!/bin/env bash


kubectl create role -n gitops-service-argocd argocd-primaza --verb='*' --resource='*.primaza.io'

kubectl create rolebinding --serviceaccount=gitops-service-argocd:gitops-service-argocd-argocd-application-controller --role argocd-primaza argocd-primaza
