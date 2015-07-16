.class public Lcom/yik/yak/ui/fragment/DeveloperFragment;
.super Lcom/yik/yak/ui/fragment/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements LBn;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 260
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 264
    const-string v2, "userID"

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v2

    invoke-virtual {v2}, LAJ;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerUser"

    invoke-static {v2, v3, v1, v0}, LAj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 280
    new-instance v1, LEy;

    invoke-direct {v1, p0, p1, p2, p3}, LEy;-><init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 323
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;ZZ)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 55
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->getAllEnvironments()[Lcom/yik/yak/data/models/Environment;

    move-result-object v2

    .line 57
    array-length v0, v2

    new-array v3, v0, [Ljava/lang/String;

    .line 58
    array-length v0, v2

    new-array v4, v0, [Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    .line 61
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 62
    aget-object v5, v2, v0

    .line 63
    invoke-virtual {v5}, Lcom/yik/yak/data/models/Environment;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 64
    invoke-virtual {v5}, Lcom/yik/yak/data/models/Environment;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 66
    invoke-virtual {v5}, Lcom/yik/yak/data/models/Environment;->isCurrentEnvironment()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 73
    const-string v0, "environment_setting"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 74
    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/yik/yak/data/models/Environment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 79
    new-instance v1, LEu;

    invoke-direct {v1, p0}, LEu;-><init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    const-string v0, "use_test_configuration"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a:Landroid/preference/CheckBoxPreference;

    invoke-static {}, LAa;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, LEv;

    invoke-direct {v1, p0}, LEv;-><init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v0, "debug_deep_link_to_peek"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->b:Landroid/preference/CheckBoxPreference;

    .line 115
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->b:Landroid/preference/CheckBoxPreference;

    new-instance v1, LEw;

    invoke-direct {v1, p0}, LEw;-><init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string v0, "debug_deep_link_to_verify"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->c:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DeveloperFragment;->c:Landroid/preference/CheckBoxPreference;

    new-instance v1, LEx;

    invoke-direct {v1, p0}, LEx;-><init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 192
    const-string v0, "Privacy Notice Reset"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 194
    invoke-static {v8}, LAa;->n(Z)V

    .line 195
    const-string v0, ""

    invoke-static {v0}, LAa;->h(Ljava/lang/String;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const v1, 0x39447

    .line 199
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 201
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 202
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 204
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0}, LAM;->b()V

    .line 212
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->e()V

    .line 213
    const-string v0, "Environments have been reset."

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "visitedPeeks.json"

    invoke-static {v0, v1}, LHi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 222
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    sget-object v1, LAQ;->d:LAQ;

    invoke-virtual {v0, v1}, LAO;->a(LAQ;)V

    .line 223
    const-string v0, "Visited Peeks Cleared"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "myPeekLocations.json"

    invoke-static {v0, v1}, LHi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 228
    const-string v0, "Saved Peeks Cleared"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    .line 232
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LAD;->b(Landroid/os/Handler$Callback;)V

    .line 237
    const-string v0, "Shared Preferences Reset"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "reported.Yak.json"

    invoke-static {v0, v1}, LHi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 240
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "reported.YakBak.json"

    invoke-static {v0, v1}, LHi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const v1, 0x1e240

    .line 245
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 247
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 249
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->deleteAllData()V

    .line 390
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->e()V

    .line 391
    const-string v0, "Database Reset"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 392
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "Developer"

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 327
    invoke-static {}, LAa;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcDismissed"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcFinishedDismissed"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcConfigured"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcEnabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcLat"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcLong"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bcName"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bcPeek"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 340
    const-string v1, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, LAM;->a()LAM;

    move-result-object v1

    invoke-virtual {v1}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v2, "resetAndAdd"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, LAj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resetAndAdd?userID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {v2}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v2

    const-string v3, "RequestBody:body"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 355
    new-instance v2, LxF;

    invoke-direct {v2}, LxF;-><init>()V

    invoke-virtual {v2, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 360
    const/4 v1, 0x0

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 361
    new-instance v1, LEB;

    invoke-direct {v1, p0}, LEB;-><init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 386
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(I)V

    .line 96
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->f()V

    .line 97
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_1
    :pswitch_0
    return v1

    .line 142
    :sswitch_0
    const-string v4, "reset_environments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "test_all_servers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "clear_visited_locations"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "clear_saved_peeks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "delete_shared_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "reset_yakker_id_deterministic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "reset_yakker_id_new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "reset_basecamp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "delete_database"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "authenticate_web_app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "reset_privacy_notice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->i()V

    goto :goto_1

    .line 152
    :pswitch_2
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->j()V

    goto :goto_1

    .line 156
    :pswitch_3
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->k()V

    goto :goto_1

    .line 160
    :pswitch_4
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->l()V

    goto/16 :goto_1

    .line 164
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Z)V

    goto/16 :goto_1

    .line 168
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Z)V

    goto/16 :goto_1

    .line 172
    :pswitch_7
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->b()V

    goto/16 :goto_1

    .line 176
    :pswitch_8
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->m()V

    goto/16 :goto_1

    .line 180
    :pswitch_9
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->h()V

    goto/16 :goto_1

    .line 184
    :pswitch_a
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->g()V

    goto/16 :goto_1

    .line 142
    :sswitch_data_0
    .sparse-switch
        -0x728eac32 -> :sswitch_3
        -0x347f2cb4 -> :sswitch_9
        -0xe5a80a -> :sswitch_6
        0x1494d32 -> :sswitch_4
        0x109f9f17 -> :sswitch_2
        0x17ec00c5 -> :sswitch_1
        0x273bed8f -> :sswitch_8
        0x2d35105f -> :sswitch_a
        0x31944dc2 -> :sswitch_7
        0x39c53ae8 -> :sswitch_5
        0x6076b5b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->e()V

    .line 138
    return-void
.end method
