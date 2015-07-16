.class LDc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/data/models/Website;

.field final synthetic b:LDb;


# direct methods
.method constructor <init>(LDb;Lcom/yik/yak/data/models/Website;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, LDc;->b:LDb;

    iput-object p2, p0, LDc;->a:Lcom/yik/yak/data/models/Website;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, LDc;->b:LDb;

    iget-object v0, v0, LDb;->a:LCY;

    iget-object v1, p0, LDc;->a:Lcom/yik/yak/data/models/Website;

    invoke-static {v0, v1}, LCY;->a(LCY;Lcom/yik/yak/data/models/Website;)V

    .line 200
    return-void
.end method
