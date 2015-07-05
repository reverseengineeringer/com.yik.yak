.class public LGr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    .line 28
    iget-object v1, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v2, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    iget v2, v2, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    invoke-static {v0, v2, v1}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 33
    iget-object v2, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    iget v2, v2, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/widget/YikYakWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    const-string v1, "appWidgetId"

    iget-object v2, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    iget v2, v2, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 39
    iget-object v0, p0, LGr;->a:Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->finish()V

    .line 40
    return-void
.end method
