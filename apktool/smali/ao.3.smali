.class Lao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Las;

.field final synthetic c:LaT;

.field final synthetic d:LKe;

.field final synthetic e:Lah;


# direct methods
.method constructor <init>(Lah;Landroid/app/Activity;Las;LaT;LKe;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lao;->e:Lah;

    iput-object p2, p0, Lao;->a:Landroid/app/Activity;

    iput-object p3, p0, Lao;->b:Las;

    iput-object p4, p0, Lao;->c:LaT;

    iput-object p5, p0, Lao;->d:LKe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 997
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lao;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    new-instance v1, Lap;

    invoke-direct {v1, p0}, Lap;-><init>(Lao;)V

    .line 1007
    iget-object v2, p0, Lao;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1011
    iget-object v3, p0, Lao;->e:Lah;

    const/4 v4, 0x5

    invoke-static {v3, v2, v4}, Lah;->a(Lah;FI)I

    move-result v3

    .line 1013
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lao;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1014
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1015
    iget-object v5, p0, Lao;->c:LaT;

    invoke-virtual {v5}, LaT;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v5, p0, Lao;->a:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1017
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1019
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1021
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lao;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1022
    iget-object v5, p0, Lao;->e:Lah;

    const/16 v6, 0xe

    invoke-static {v5, v2, v6}, Lah;->a(Lah;FI)I

    move-result v5

    iget-object v6, p0, Lao;->e:Lah;

    const/4 v7, 0x2

    invoke-static {v6, v2, v7}, Lah;->a(Lah;FI)I

    move-result v6

    iget-object v7, p0, Lao;->e:Lah;

    const/16 v8, 0xa

    invoke-static {v7, v2, v8}, Lah;->a(Lah;FI)I

    move-result v7

    iget-object v8, p0, Lao;->e:Lah;

    const/16 v9, 0xc

    invoke-static {v8, v2, v9}, Lah;->a(Lah;FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1024
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1028
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lao;->c:LaT;

    invoke-virtual {v3}, LaT;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lao;->c:LaT;

    invoke-virtual {v3}, LaT;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    iget-object v1, p0, Lao;->d:LKe;

    iget-boolean v1, v1, LKe;->d:Z

    if-eqz v1, :cond_0

    .line 1032
    new-instance v1, Laq;

    invoke-direct {v1, p0}, Laq;-><init>(Lao;)V

    .line 1039
    iget-object v2, p0, Lao;->c:LaT;

    invoke-virtual {v2}, LaT;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1043
    :cond_0
    iget-object v1, p0, Lao;->d:LKe;

    iget-boolean v1, v1, LKe;->f:Z

    if-eqz v1, :cond_1

    .line 1044
    new-instance v1, Lar;

    invoke-direct {v1, p0}, Lar;-><init>(Lao;)V

    .line 1052
    iget-object v2, p0, Lao;->c:LaT;

    invoke-virtual {v2}, LaT;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1056
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1057
    return-void
.end method
