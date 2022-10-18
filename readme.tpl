# {{.Name}}

<!---
Note: Do NOT edit directly, this file was generated using https://github.com/chainguard-images/readme-generator
-->

[![CI status]({{.Repo}}/actions/workflows/release.yaml/badge.svg)]({{.Repo}}/actions/workflows/release.yaml)

{{.Description}}

## Get It!

The image is available on `{{host .Location}}`:

```
docker pull {{.Location}}:latest
```

## Supported tags

| Tag | Digest | Arch |
| --- | ------ | ---- |
{{- range $tag := .Tags}}
| {{formatList $tag.Aliases}} | `{{$tag.Digest}}`<br/>[View entry in Rekor]({{$tag.RekorURL}}) | {{formatList $tag.Archs}} |
{{- end }}

{{ if .UsageMarkdown }}
## Usage

{{.UsageMarkdown}}
{{- end }}

## Signing

This image is signed using [Sigstore](https://sigstore.dev)!

<details>
<br/>
To verify the image, download <a href="https://github.com/sigstore/cosign">cosign</a> and run:

```
COSIGN_EXPERIMENTAL=1 cosign verify {{.Location}}:latest | jq
```

Output:
```
{{.CosignOutput}}
```

You can verify that the image was built in Github Actions in this repository from the `Issuer` and `Subject` fields.
</details>

## Build

This image is built with {{ if .UsesMelange }}[melange](https://github.com/chainguard-dev/melange) and {{ end }}[apko](https://github.com/chainguard-dev/apko).
