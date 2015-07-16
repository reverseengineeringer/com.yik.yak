.class LuV;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic a:LuU;

.field private b:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public constructor <init>(LuU;Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, LuV;->a:LuU;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 423
    iput-object p2, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    .line 424
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public a(LuV;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    if-ne v0, p1, :cond_1

    .line 442
    invoke-virtual {p1}, LuV;->a()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    instance-of v0, v0, LuV;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    check-cast v0, LuV;

    .line 445
    invoke-virtual {v0, p1}, LuV;->a(LuV;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, LuV;->a:LuU;

    invoke-virtual {v0}, LuU;->d()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    .line 433
    :cond_0
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    instance-of v0, v0, LuV;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    check-cast v0, LuV;

    invoke-virtual {v0, p1}, LuV;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, LuV;->a:LuU;

    invoke-static {v0}, LuU;->a(LuU;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 454
    iget-object v0, p0, LuV;->a:LuU;

    invoke-virtual {v0, p1}, LuU;->c(Landroid/view/View;)V

    .line 457
    :cond_0
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, LuV;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 460
    :cond_1
    return-void
.end method
