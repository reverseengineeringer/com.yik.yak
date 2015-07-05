.class public Lcom/yik/yak/ui/widget/YikYakWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/widget/YikYakWidget;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 3

    .prologue
    .line 26
    sput-object p0, Lcom/yik/yak/ui/widget/YikYakWidget;->a:Landroid/content/Context;

    .line 28
    invoke-static {p0, p2}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030075

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3

    .prologue
    .line 89
    sput-object p1, Lcom/yik/yak/ui/widget/YikYakWidget;->a:Landroid/content/Context;

    .line 91
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    .line 92
    invoke-static {p1, v2}, Lcom/yik/yak/ui/widget/YikYakWidgetConfigureActivity;->b(Landroid/content/Context;I)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    sput-object p1, Lcom/yik/yak/ui/widget/YikYakWidget;->a:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    sput-object p1, Lcom/yik/yak/ui/widget/YikYakWidget;->a:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .prologue
    .line 80
    sput-object p1, Lcom/yik/yak/ui/widget/YikYakWidget;->a:Landroid/content/Context;

    .line 82
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p3, v0

    .line 83
    invoke-static {p1, p2, v2}, Lcom/yik/yak/ui/widget/YikYakWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method
