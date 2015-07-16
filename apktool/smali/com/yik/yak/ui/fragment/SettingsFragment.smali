.class public Lcom/yik/yak/ui/fragment/SettingsFragment;
.super Lcom/yik/yak/ui/fragment/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements LBn;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field protected a:Landroid/preference/PreferenceGroup;

.field protected b:Landroid/preference/SwitchPreference;

.field protected c:Landroid/preference/PreferenceGroup;

.field protected d:Landroid/preference/SwitchPreference;

.field protected e:Landroid/preference/SwitchPreference;

.field protected f:Landroid/preference/Preference;

.field protected g:Landroid/preference/PreferenceGroup;

.field protected h:Landroid/preference/SwitchPreference;

.field protected i:Landroid/preference/SwitchPreference;

.field protected j:Landroid/preference/SwitchPreference;

.field protected k:Landroid/preference/PreferenceGroup;

.field protected l:Landroid/preference/SwitchPreference;

.field protected m:Landroid/preference/SwitchPreference;

.field protected n:Landroid/preference/PreferenceGroup;

.field protected o:Landroid/preference/Preference;

.field protected p:Landroid/preference/Preference;

.field protected q:Landroid/preference/Preference;

.field protected r:Landroid/preference/Preference;

.field protected s:Landroid/preference/Preference;

.field protected t:LAD;

.field private u:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    if-ne p1, v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->e:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, LAa;->k(Z)V

    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b()V

    .line 249
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "pin"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/16 v1, 0x1771

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    return-void
.end method

.method private b(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    if-ne p1, v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {v0}, LAa;->q(Z)V

    .line 333
    invoke-static {v1}, LAa;->p(Z)V

    .line 334
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->b:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    invoke-static {p1}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 237
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 239
    const-string v0, "Value copied to your clipboard."

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 255
    :cond_0
    return-void
.end method

.method private c(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 340
    const/16 v0, 0x1773

    if-ne p1, v0, :cond_1

    .line 341
    const-string v0, ""

    .line 343
    if-eqz p2, :cond_0

    .line 344
    const-string v0, "pin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v2, "pin"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/16 v0, 0x1772

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->d:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 258
    invoke-static {p1}, LAa;->p(Z)V

    .line 260
    if-eqz p1, :cond_1

    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, LAa;->q(Z)V

    .line 263
    invoke-static {}, LAa;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->u:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const-string v1, "Source"

    const-string v2, "Me"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const/16 v1, 0xdac

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->q(Z)V

    .line 270
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->l()V

    goto :goto_0
.end method

.method private d(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    const/16 v0, 0x1773

    if-ne p1, v0, :cond_1

    .line 358
    if-eqz p2, :cond_0

    .line 359
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->k(Z)V

    .line 360
    const-string v0, "pin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LAa;->e(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->a()Z

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, ""

    invoke-static {v0}, LAa;->e(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->d:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->d:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, LAa;->m(Z)V

    .line 276
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "basecamp_category"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->a:Landroid/preference/PreferenceGroup;

    .line 85
    const-string v0, "base_camp_enabled"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->b:Landroid/preference/SwitchPreference;

    .line 87
    const-string v0, "privacy_prefs"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->c:Landroid/preference/PreferenceGroup;

    .line 88
    const-string v0, "protect_your_yaks"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->d:Landroid/preference/SwitchPreference;

    .line 89
    const-string v0, "verification_not_verified"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->e:Landroid/preference/SwitchPreference;

    .line 90
    const-string v0, "verification_verified"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->f:Landroid/preference/Preference;

    .line 91
    const-string v0, "double_tap_to_vote"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->i:Landroid/preference/SwitchPreference;

    .line 92
    const-string v0, "left_handed_mode"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->j:Landroid/preference/SwitchPreference;

    .line 94
    const-string v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->k:Landroid/preference/PreferenceGroup;

    .line 95
    const-string v0, "push_notifications"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->l:Landroid/preference/SwitchPreference;

    .line 96
    const-string v0, "notification_sounds"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->m:Landroid/preference/SwitchPreference;

    .line 98
    const-string v0, "opt_out_prefs"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->g:Landroid/preference/PreferenceGroup;

    .line 99
    const-string v0, "opt_out_analytics"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->h:Landroid/preference/SwitchPreference;

    .line 101
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->g:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    const-string v0, "misc"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->n:Landroid/preference/PreferenceGroup;

    .line 105
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->o:Landroid/preference/Preference;

    .line 106
    const-string v0, "yakker_id_one"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->p:Landroid/preference/Preference;

    .line 107
    const-string v0, "yakker_id_two"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->q:Landroid/preference/Preference;

    .line 108
    const-string v0, "yakker_token"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->r:Landroid/preference/Preference;

    .line 109
    const-string v0, "previous_verification_token"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->s:Landroid/preference/Preference;

    .line 111
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->f()V

    .line 112
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    return-void
.end method

.method private e(Z)V
    .locals 0

    .prologue
    .line 279
    invoke-static {p1}, LAa;->l(Z)V

    .line 280
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->d:Landroid/preference/SwitchPreference;

    invoke-static {}, LAa;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    invoke-static {}, LAa;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->b:Landroid/preference/SwitchPreference;

    invoke-static {}, LAa;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->i:Landroid/preference/SwitchPreference;

    invoke-static {}, LAa;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->j:Landroid/preference/SwitchPreference;

    invoke-static {}, LAa;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    invoke-static {}, LAa;->p()Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->l:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->k:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->m:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->o:Landroid/preference/Preference;

    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->t:LAD;

    invoke-virtual {v0}, LAD;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->p:Landroid/preference/Preference;

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->q:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->t:LAD;

    invoke-virtual {v1}, LAD;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->r:Landroid/preference/Preference;

    invoke-static {}, LAa;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->s:Landroid/preference/Preference;

    invoke-static {}, LAa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    :goto_2
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->b:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->a:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->m:Landroid/preference/SwitchPreference;

    invoke-static {}, LAa;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->n:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->p:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->n:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->q:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->n:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->n:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->s:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private f(Z)V
    .locals 1

    .prologue
    .line 283
    if-eqz p1, :cond_0

    const-string v0, "left"

    :goto_0
    invoke-static {v0}, LAa;->f(Ljava/lang/String;)V

    .line 284
    return-void

    .line 283
    :cond_0
    const-string v0, "right"

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->c:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->e:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->c:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-static {}, LAa;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->c:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->c:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->e:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->e:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private g(Z)V
    .locals 2

    .prologue
    .line 287
    invoke-static {p1}, LAa;->i(Z)V

    .line 288
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0, p1}, LHa;->a(Z)V

    .line 290
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->k:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->m:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->k:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->m:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->m:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private h(Z)V
    .locals 0

    .prologue
    .line 299
    invoke-static {p1}, LAa;->e(Z)V

    .line 300
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    const-string v0, "Settings"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 304
    sparse-switch p1, :sswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 306
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/yik/yak/ui/fragment/SettingsFragment;->c(ILandroid/content/Intent;)V

    goto :goto_0

    .line 309
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lcom/yik/yak/ui/fragment/SettingsFragment;->d(ILandroid/content/Intent;)V

    goto :goto_0

    .line 312
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 315
    :sswitch_3
    invoke-direct {p0, p2, p3}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0xdac -> :sswitch_2
        0x1771 -> :sswitch_0
        0x1772 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 77
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(I)V

    .line 78
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->t:LAD;

    .line 79
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->u:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->e()V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 374
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_1
    return v1

    .line 173
    :sswitch_0
    const-string v3, "protect_your_yaks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "verification_not_verified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "base_camp_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "opt_out_analytics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "double_tap_to_vote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "left_handed_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "push_notifications"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "notification_sounds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 175
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->a(Z)V

    goto :goto_1

    .line 179
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b(Z)V

    goto :goto_1

    .line 183
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->c(Z)V

    goto :goto_1

    .line 187
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->d(Z)V

    goto :goto_1

    .line 191
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->e(Z)V

    goto/16 :goto_1

    .line 195
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->f(Z)V

    goto/16 :goto_1

    .line 199
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->g(Z)V

    goto/16 :goto_1

    .line 203
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->h(Z)V

    goto/16 :goto_1

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        -0x546071dc -> :sswitch_4
        -0x37d3a5cf -> :sswitch_2
        -0x2fbc5f7d -> :sswitch_6
        -0x24d4b8b7 -> :sswitch_3
        0x46d0ff18 -> :sswitch_7
        0x5174ba58 -> :sswitch_1
        0x525e858c -> :sswitch_0
        0x6ec5d1bc -> :sswitch_5
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
        :pswitch_7
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_1
    return v1

    .line 212
    :sswitch_0
    const-string v3, "yakker_id_one"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "yakker_id_two"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "yakker_token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "previous_verification_token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/SettingsFragment;->t:LAD;

    invoke-virtual {v0}, LAD;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :pswitch_2
    invoke-static {}, LAa;->w()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :pswitch_3
    invoke-static {}, LAa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3892ae3 -> :sswitch_3
        0x181763ac -> :sswitch_0
        0x18177792 -> :sswitch_1
        0x53fbc64f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->onResume()V

    .line 156
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/SettingsFragment;->g()V

    .line 157
    return-void
.end method
