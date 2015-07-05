.class public Lcom/yik/yak/ui/activity/SplashScreen;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field private final b:Landroid/os/Handler$Callback;

.field private final c:Ljava/lang/Runnable;

.field private d:Landroid/os/Handler$Callback;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Dialog;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/os/Handler;

.field private i:LAq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 35
    new-instance v0, LCj;

    invoke-direct {v0, p0}, LCj;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->b:Landroid/os/Handler$Callback;

    .line 47
    new-instance v0, LCl;

    invoke-direct {v0, p0}, LCl;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->c:Ljava/lang/Runnable;

    .line 54
    new-instance v0, LCm;

    invoke-direct {v0, p0}, LCm;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->d:Landroid/os/Handler$Callback;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/os/Handler;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:LAq;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 87
    invoke-static {p0}, LGC;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->h()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->f()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->f()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SplashScreen;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SplashScreen;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 198
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->r()V

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    if-eqz p1, :cond_2

    .line 217
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->b(Ljava/lang/String;)V

    .line 223
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->finish()V

    .line 225
    return-void

    .line 220
    :cond_3
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->c()V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->finish()V

    .line 306
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->j()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:LAq;

    invoke-virtual {v0}, LAq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:LAq;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->d:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1}, LAq;->a(Landroid/os/Handler$Callback;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->i()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 110
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->i()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, LAq;->a()LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    invoke-virtual {v1, v0}, LGs;->c(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    new-instance v1, LCn;

    invoke-direct {v1, p0}, LCn;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    invoke-virtual {v0, p0, v1}, LAw;->a(Landroid/content/Context;LAy;)V

    .line 132
    return-void
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->f()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:LAq;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->b:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1}, LAq;->b(Landroid/os/Handler$Callback;)V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, LzQ;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/YikYak;->a(Ljava/lang/String;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->e()V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->c()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->d()V

    .line 148
    const v0, 0x7f080118

    const v1, 0x7f080117

    new-instance v2, LCo;

    invoke-direct {v2, p0}, LCo;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    new-instance v3, LCp;

    invoke-direct {v3, p0}, LCp;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    invoke-static {p0, v0, v1, v2, v3}, LGI;->a(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/app/Dialog;

    .line 167
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->d()V

    .line 171
    const v0, 0x7f08010f

    const v1, 0x7f08010e

    new-instance v2, LCq;

    invoke-direct {v2, p0}, LCq;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    new-instance v3, LCr;

    invoke-direct {v3, p0}, LCr;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    invoke-static {p0, v0, v1, v2, v3}, LGI;->a(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    .line 186
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->e:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    const-string v1, "title"

    const-string v2, "Connection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "message"

    const-string v2, "There was a problem connecting to our servers.\r\n\r\nWould you like to try again or come back later?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "okText"

    const-string v2, "Try Again"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "cancelText"

    const-string v2, "Later"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 228
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCs;

    invoke-direct {v1, p0}, LCs;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 320
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCk;

    invoke-direct {v1, p0}, LCk;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 273
    sparse-switch p1, :sswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 275
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/activity/SplashScreen;->a(I)V

    goto :goto_0

    .line 279
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/activity/SplashScreen;->b(I)V

    goto :goto_0

    .line 283
    :sswitch_2
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->l()V

    goto :goto_0

    .line 287
    :sswitch_3
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->m()V

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SplashScreen;->setContentView(I)V

    .line 236
    iput-object p0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->e:Landroid/content/Context;

    .line 237
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->e:Landroid/content/Context;

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:LAq;

    .line 238
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->k()V

    .line 242
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_FORCE_RESTART"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-static {}, LAA;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LAA;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/SplashScreen;->a(Z)V

    .line 248
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 259
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->d()V

    .line 260
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 253
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->c()V

    .line 254
    return-void
.end method
