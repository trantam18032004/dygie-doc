local template = import "template.libsonnet";

template.DyGIE {
  bert_model: "roberta-base",
  cuda_device: 1,
  data_paths: {
    train: "data/docred/processed-data/train.json",
    validation: "data/docred/processed-data/dev.json",
    test: "data/docred/processed-data/test.json",
  },
  loss_weights: {
    ner: 0.2,
    relation: 0.0,
    coref: 0.0,
    events: 0.0,
    document_relation: 1.0,
    document_events:0.0,
    event_coref: 0.0,

  },
  target_task: "document_relation"
}
