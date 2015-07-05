.class Lt;
.super Lo;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lo;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    .line 36
    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Lp;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lu;

    iget-object v1, p0, Lt;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lu;-><init>(Lt;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
