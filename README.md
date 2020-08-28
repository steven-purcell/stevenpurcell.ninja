# personalWebsite

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Deployment

$ flutter build web --release
$ cd /home/steven/repos/personalWebsite/build/web
$ aws s3 rm s3://stevenpurcell.ninja --recursive
$ aws s3 sync . s3://stevenpurcell.ninja