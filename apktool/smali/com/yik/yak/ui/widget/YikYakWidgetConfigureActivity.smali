.class public Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:I

.field b:Landroid/view/View$OnClickListener;

.field public c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    .line 23
    new-instance v0, LGZ;

    invoke-direct {v0, p0}, LGZ;-><init>(Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->b:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    const-string v0, "com.yik.yak.ui.widget.YikYakWidget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appwidget_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "com.yik.yak.ui.widget.YikYakWidget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appwidget_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method static b(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 68
    const-string v0, "com.yik.yak.ui.widget.YikYakWidget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appwidget_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->setResult(I)V

    .line 81
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f0d01db

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->c:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0d01dc

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    .line 94
    :cond_0
    iget v0, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->finish()V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->c:Landroid/widget/EditText;

    iget v1, p0, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    invoke-static {p0, v1}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
