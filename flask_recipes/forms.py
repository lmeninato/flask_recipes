from wtforms import Form, StringField, PasswordField, TextAreaField, \
    FieldList, validators


class RegistrationForm(Form):
    username = StringField('Username', [validators.Length(min=4, max=25)])
    password = PasswordField('Password', [
        validators.DataRequired(),
        validators.EqualTo('confirm', message='Passwords must match')
    ])
    confirm = PasswordField('Repeat Password')


class LoginForm(Form):
    username = StringField('Username', [validators.Length(min=4, max=25)])
    password = PasswordField('Password', [validators.DataRequired()])


class RecipeForm(Form):
    title = StringField('Title', [validators.Length(min=4, max=25)])
    body = TextAreaField('Body')
    instructions = FieldList(StringField('Instruction'))
