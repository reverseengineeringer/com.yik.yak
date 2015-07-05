.class public LEO;
.super LEE;
.source "SourceFile"

# interfaces
.implements LBd;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected a:Landroid/preference/PreferenceGroup;

.field protected b:Landroid/preference/SwitchPreference;

.field protected c:Landroid/preference/PreferenceGroup;

.field protected d:Landroid/preference/SwitchPreference;

.field protected e:Landroid/preference/PreferenceGroup;

.field protected f:Landroid/preference/SwitchPreference;

.field protected g:Landroid/preference/SwitchPreference;

.field protected h:Landroid/preference/SwitchPreference;

.field protected i:Landroid/preference/PreferenceGroup;

.field protected j:Landroid/preference/SwitchPreference;

.field protected k:Landroid/preference/SwitchPreference;

.field protected l:Landroid/preference/PreferenceGroup;

.field protected m:Landroid/preference/Preference;

.field protected n:Landroid/preference/Preference;

.field protected o:Landroid/preference/Preference;

.field protected p:Landroid/preference/Preference;

.field protected q:LAq;

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, LEE;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    if-ne p1, v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {v0}, LzQ;->j(Z)V

    .line 247
    invoke-static {v1}, LzQ;->i(Z)V

    .line 248
    iget-object v0, p0, LEO;->b:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {v0}, LzQ;->e(Z)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0}, LEO;->d()V

    .line 181
    :cond_0
    return-void
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 254
    const/16 v0, 0x1773

    if-ne p1, v0, :cond_1

    .line 255
    const-string v0, ""

    .line 257
    if-eqz p2, :cond_0

    .line 258
    const-string v0, "pin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, LEO;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    const-string v2, "title"

    invoke-virtual {p0}, LEO;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080129

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v2, "pin"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/16 v0, 0x1772

    invoke-virtual {p0, v1, v0}, LEO;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, LEO;->d:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 184
    invoke-static {p1}, LzQ;->i(Z)V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, LzQ;->j(Z)V

    .line 189
    invoke-static {}, LzQ;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LEO;->r:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const/16 v1, 0xdac

    invoke-virtual {p0, v0, v1}, LEO;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->j(Z)V

    .line 195
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->h()V

    goto :goto_0
.end method

.method private c(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    const/16 v0, 0x1773

    if-ne p1, v0, :cond_1

    .line 272
    if-eqz p2, :cond_0

    .line 273
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->e(Z)V

    .line 274
    const-string v0, "pin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LzQ;->d(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, LEO;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->a()Z

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string v0, ""

    invoke-static {v0}, LzQ;->d(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, LEO;->d:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, LEO;->d:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 200
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, LzQ;->g(Z)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LEO;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "title"

    invoke-virtual {p0}, LEO;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "pin"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/16 v1, 0x1771

    invoke-virtual {p0, v0, v1}, LEO;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method

.method private d(Z)V
    .locals 0

    .prologue
    .line 204
    invoke-static {p1}, LzQ;->f(Z)V

    .line 205
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 75
    const-string v0, "basecamp_category"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, LEO;->a:Landroid/preference/PreferenceGroup;

    .line 76
    const-string v0, "base_camp_enabled"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->b:Landroid/preference/SwitchPreference;

    .line 78
    const-string v0, "privacy_prefs"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, LEO;->c:Landroid/preference/PreferenceGroup;

    .line 79
    const-string v0, "protect_your_yaks"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->d:Landroid/preference/SwitchPreference;

    .line 81
    const-string v0, "double_tap_to_vote"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->g:Landroid/preference/SwitchPreference;

    .line 82
    const-string v0, "left_handed_mode"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->h:Landroid/preference/SwitchPreference;

    .line 84
    const-string v0, "notification_settings"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, LEO;->i:Landroid/preference/PreferenceGroup;

    .line 85
    const-string v0, "push_notifications"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->j:Landroid/preference/SwitchPreference;

    .line 86
    const-string v0, "notification_sounds"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->k:Landroid/preference/SwitchPreference;

    .line 89
    const-string v0, "opt_out_prefs"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, LEO;->e:Landroid/preference/PreferenceGroup;

    .line 90
    const-string v0, "opt_out_analytics"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, LEO;->f:Landroid/preference/SwitchPreference;

    .line 91
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "optOut"

    const-string v2, "optOutAnalyticsEnabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, LEO;->b()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, LEO;->e:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    :cond_0
    const-string v0, "misc"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, LEO;->l:Landroid/preference/PreferenceGroup;

    .line 96
    const-string v0, "version"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, LEO;->m:Landroid/preference/Preference;

    .line 97
    const-string v0, "yakker_id_one"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, LEO;->n:Landroid/preference/Preference;

    .line 98
    const-string v0, "yakker_id_two"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, LEO;->o:Landroid/preference/Preference;

    .line 99
    const-string v0, "yakker_token"

    invoke-virtual {p0, v0}, LEO;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, LEO;->p:Landroid/preference/Preference;

    .line 101
    invoke-direct {p0}, LEO;->f()V

    .line 102
    invoke-virtual {p0}, LEO;->b()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, LEO;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    return-void
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 208
    if-eqz p1, :cond_0

    const-string v0, "left"

    :goto_0
    invoke-static {v0}, LzQ;->e(Ljava/lang/String;)V

    .line 209
    return-void

    .line 208
    :cond_0
    const-string v0, "right"

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, LEO;->d:Landroid/preference/SwitchPreference;

    invoke-static {}, LzQ;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 108
    invoke-static {}, LzQ;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, LEO;->b:Landroid/preference/SwitchPreference;

    invoke-static {}, LzQ;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 115
    :goto_0
    iget-object v0, p0, LEO;->g:Landroid/preference/SwitchPreference;

    invoke-static {}, LzQ;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v0, p0, LEO;->h:Landroid/preference/SwitchPreference;

    invoke-static {}, LzQ;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 118
    invoke-static {}, LzQ;->l()Z

    move-result v0

    .line 119
    iget-object v1, p0, LEO;->j:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, LEO;->i:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, LEO;->k:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :goto_1
    iget-object v0, p0, LEO;->m:Landroid/preference/Preference;

    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, LEO;->q:LAq;

    invoke-virtual {v0}, LAq;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, LEO;->n:Landroid/preference/Preference;

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, LEO;->o:Landroid/preference/Preference;

    iget-object v1, p0, LEO;->q:LAq;

    invoke-virtual {v1}, LAq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, LEO;->p:Landroid/preference/Preference;

    invoke-static {}, LzQ;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :goto_2
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, LEO;->b:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 112
    invoke-virtual {p0}, LEO;->b()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, LEO;->a:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, LEO;->k:Landroid/preference/SwitchPreference;

    invoke-static {}, LzQ;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, LEO;->l:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, LEO;->n:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    iget-object v0, p0, LEO;->l:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, LEO;->o:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    iget-object v0, p0, LEO;->l:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, LEO;->p:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private f(Z)V
    .locals 2

    .prologue
    .line 212
    invoke-static {p1}, LzQ;->d(Z)V

    .line 213
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0, p1}, LGs;->b(Z)V

    .line 215
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 216
    iget-object v0, p0, LEO;->i:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, LEO;->k:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, LEO;->i:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, LEO;->k:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    iget-object v0, p0, LEO;->k:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private g(Z)V
    .locals 0

    .prologue
    .line 224
    invoke-static {p1}, LzQ;->a(Z)V

    .line 225
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string v0, "Settings"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 229
    sparse-switch p1, :sswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 231
    :sswitch_0
    invoke-direct {p0, p2, p3}, LEO;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 234
    :sswitch_1
    invoke-direct {p0, p2, p3}, LEO;->c(ILandroid/content/Intent;)V

    goto :goto_0

    .line 237
    :sswitch_2
    invoke-direct {p0, p2, p3}, LEO;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0xdac -> :sswitch_2
        0x1771 -> :sswitch_0
        0x1772 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, LEE;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LEO;->setHasOptionsMenu(Z)V

    .line 68
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, LEO;->a(I)V

    .line 69
    invoke-virtual {p0}, LEO;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    iput-object v0, p0, LEO;->q:LAq;

    .line 70
    invoke-virtual {p0}, LEO;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, LEO;->r:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, LEO;->e()V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 288
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_1
    return v1

    .line 142
    :sswitch_0
    const-string v3, "protect_your_yaks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "base_camp_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "opt_out_analytics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "double_tap_to_vote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "left_handed_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "push_notifications"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "notification_sounds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 144
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->a(Z)V

    goto :goto_1

    .line 148
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->b(Z)V

    goto :goto_1

    .line 152
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->c(Z)V

    goto :goto_1

    .line 156
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->d(Z)V

    goto :goto_1

    .line 160
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->e(Z)V

    goto :goto_1

    .line 164
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->f(Z)V

    goto/16 :goto_1

    .line 168
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, LEO;->g(Z)V

    goto/16 :goto_1

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        -0x546071dc -> :sswitch_3
        -0x37d3a5cf -> :sswitch_1
        -0x2fbc5f7d -> :sswitch_5
        -0x24d4b8b7 -> :sswitch_2
        0x46d0ff18 -> :sswitch_6
        0x525e858c -> :sswitch_0
        0x6ec5d1bc -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
