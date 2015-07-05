.class public LFm;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/view/PhotoLinkCardView;

.field final synthetic b:Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;Lcom/yik/yak/ui/view/PhotoLinkCardView;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, LFm;->b:Lcom/yik/yak/ui/view/PhotoLinkCardView$$ViewInjector;

    iput-object p2, p0, LFm;->a:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LFm;->a:Lcom/yik/yak/ui/view/PhotoLinkCardView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/PhotoLinkCardView;->onClick()V

    .line 28
    return-void
.end method
