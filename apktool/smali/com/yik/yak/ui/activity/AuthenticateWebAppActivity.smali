.class public Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/app/Dialog;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;

    invoke-static {}, LAq;->a()LAq;

    move-result-object v1

    invoke-virtual {v1}, LAq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;-><init>(Ljava/lang/String;I)V

    new-instance v1, LAJ;

    invoke-direct {v1, p0}, LAJ;-><init>(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/yik/yak/data/http/request/AuthenticateWebTokenRequest;->execute(Landroid/content/Context;LAe;)Landroid/os/Handler;

    .line 90
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->c:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->a()V

    .line 46
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 114
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v2}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 125
    if-eq v0, v1, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->a(I)V

    .line 137
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "ZOMG!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Make sure you type in a valid number for a Token! Noob."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Okay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->b:Landroid/app/Dialog;

    .line 134
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 135
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Something went wrong with the token parsing."

    aput-object v1, v0, v5

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->d:Landroid/support/v7/widget/Toolbar;

    .line 50
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->d:Landroid/support/v7/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 52
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->d()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0d0065
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->c()V

    .line 39
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 105
    :pswitch_0
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 62
    :cond_0
    return-void
.end method
