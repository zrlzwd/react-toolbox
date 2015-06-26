###
@todo
###

Form  = require '../../components/form'

module.exports = React.createClass

  # -- States & Properties
  getInitialState: ->
    attributes : [
      ref: "name", label: "Your Name", required: true, storage: true
    ,
      ref: "description", multiline: true, label: "Description", value: "Doer"
    ,
      ref: "birthdate", type: "date", label: "Birthdate"
    ,
      ref: "years", type: "number", label: "Years"
    ,
      ref: "twitter", label: "Nickname", disabled: true
    ,
      ref: "nomad", type: "checkbox", label: "Are you a nomad?", value: true
    ,
      ref: "cow", type: "checkbox", label: "Are you a cow?", value: false
    ,
      ref: "girl", type: "checkbox", label: "Are you a girl?", value: false, disabled: true
    ,
      ref: "nomad_2", type: "radio", label: "Are you a nomad_2?", value: true
    ,
      ref: "cow_2", type: "radio", label: "Are you a cow_2?", value: false
    ,
      ref: "girl_2", type: "radio", label: "Are you a girl_2?", value: false, disabled: true
    ,
      type: "submit", caption: "Send", style: "primary anchor", disabled: true
    ]

  # -- Events
  onEvent: (type, event, form) ->
    console.log "[form.#{type}]", form.getValue()

  # -- Render
  render: ->
    <section>
      <h2>Form</h2>
      <p>lorem ipsum...</p>

      <Form attributes={@state.attributes}
            storage="example-form"
            onChange={@onEvent.bind null, "change"}
            onError={@onEvent.bind null, "error"}
            onValid={@onEvent.bind null, "valid"}
            onSubmit={@onEvent.bind null, "submit"}/>
    </section>