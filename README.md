# ak-image-demo

Projeto de demonstração para a remediação autônoma de **imagens de container**
do Artifact Keeper. O `Dockerfile` parte de `alpine:3.18.0`, cujo `libcrypto3`
/ `libssl3` 3.1.0-r4 tem CVEs com correção publicada (ex.: CVE-2024-6119,
corrigida em 3.1.7-r0).

O agente deve corrigir só o Dockerfile (pinar o pacote ou subir a base), abrir
o PR, e o builder publica `imagem:tag-SecurityfixAI` no registry.
