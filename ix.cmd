[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "tiroleis_xy"
command = ~B,DB,D,DF,F,x+y
time = 30

[Command]
name = "tiroleis_x"
command = ~B,DB,D,DF,F,x
time = 30

[Command]
name = "tiroleis_y"
command = ~B,DB,D,DF,F,y
time = 30

[Command]
name = "ixplit_xy"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "arukas_ab"
command = ~D,DF,F,a+b
time = 20

[Command]
name = "ixplit_x"
command = ~D,DF,F,x
time = 20

[Command]
name = "ixplit_y"
command = ~D,DF,F,y
time = 20

[Command]
name = "arukas_a"
command = ~D,DF,F,a
time = 20

[Command]
name = "arukas_b"
command = ~D,DF,F,b
time = 20

[Command]
name = "choose_a"
command = ~D,DB,B,a
time = 20

[Command]
name = "choose_b"
command = ~D,DB,B,b
time = 20

[Command]
name = "digwig_x"
command = ~D,DB,B,x
time = 20

[Command]
name = "digwig_y"
command = ~D,DB,B,y
time = 20

[Command]
name = "nuit_x"
command = ~B,D,DB,x
time = 20

[Command]
name = "nuit_y"
command = ~B,D,DB,y
time = 20

[Command]
name = "intermission_a"
command = ~B,D,DB,a
time = 20

[Command]
name = "intermission_b"
command = ~B,D,DB,b
time = 20

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "recovery"
command = x+y+z
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Statedef -1]
[State -1, Defesa]
type = ChangeState
triggerall = ((RoundState = 2) && ((Var(59) = 1^^Var(59) = 2)) && (Ctrl))
triggerall = (EnemyNear,MoveType = A) && (StateType = S)
trigger1 = Random <= 999
value = 130

[State -1, Defesa Abaixado]
type = ChangeState
triggerall = ((RoundState = 2) && ((Var(59) = 1^^Var(59) = 2)) && (Ctrl))
triggerall = (EnemyNear,MoveType = A) && (StateType = C)
trigger1 = Random <= 999
value = 131

[State -1, Defesa Aérea]
type = ChangeState
triggerall = ((RoundState = 2) && ((Var(59) = 1^^Var(59) = 2)) && (Ctrl))
triggerall = (EnemyNear,MoveType = A) && (StateType = A)
trigger1 = Random <= 999
value = 132

[State -1, Tiroleis]
type = ChangeState
value = 2000
triggerall = (Command = "tiroleis_x"||Command = "tiroleis_y"||Command = "tiroleis_xy")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, iXplit]
type = ChangeState
value = 1000
triggerall = (Command = "ixplit_x"||Command = "ixplit_y"||Command = "ixplit_xy")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Arukas]
type = ChangeState
value = 1020
triggerall = (Command = "arukas_a"||Command = "arukas_b"||Command = "arukas_ab")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Nuit]
type = ChangeState
value = 1040
triggerall = (Command = "nuit_x"||Command = "nuit_y")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Digwig]
type = ChangeState
value = 1060
triggerall = StateType = A
triggerall = (Command = "digwig_x"||Command = "digwig_y")
trigger1 = Vel X !=0
trigger1 = Ctrl

[State -1, Intermission]
type = ChangeState
value = 1080
triggerall = (Command = "intermission_a"||Command = "intermission_b")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Choose]
type = ChangeState
value = 1100
triggerall = (Command = "choose_a"||Command = "choose_b")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Power Charge]
type = ChangeState
value = 800
triggerall = ((Command = "holdc"&&Command = "holdz")&&Power<3000)
triggerall = StateType = S
trigger1 = Ctrl

[State -1, Taunt]
type = ChangeState
value = 3021
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Soco Fraco]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Soco Forte]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 220 && MoveContact)

[State -1, Chute Fraco]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Chute Forte]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 220 && MoveContact)

[State -1, Soco Fraco Abaixado]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Soco Forte Abaixado]
type = ChangeState
value = 305
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 300 && MoveContact)
trigger3 = (StateNo = 310 && MoveContact)

[State -1, Chute Fraco Abaixado]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Chute Forte Abaixado]
type = ChangeState
value = 315
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 300 && MoveContact)
trigger3 = (StateNo = 310 && MoveContact)

[State -1, Soco Fraco Aéreo]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Soco Forte Aéreo]
type = ChangeState
value = 405
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 400 && MoveContact)
trigger3 = (StateNo = 410 && MoveContact)

[State -1, Chute Fraco Aéreo]
type = ChangeState
value = 410
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Chute Forte Aéreo]
type = ChangeState
value = 415
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 400 && MoveContact)
trigger2 = (StateNo = 410 && MoveContact)