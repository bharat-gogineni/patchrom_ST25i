.class public Lcom/android/thememanager/view/LockscreenConfigSettings;
.super Landroid/preference/PreferenceActivity;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$StringChoiceItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$CheckboxItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;,
        Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    }
.end annotation


# instance fields
.field private mConfigPath:Ljava/lang/String;

.field private mNextRequestCode:I

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/thememanager/view/LockscreenConfigSettings$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCodeObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mNextRequestCode:I

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    .line 560
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/view/LockscreenConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/view/LockscreenConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/thememanager/view/LockscreenConfigSettings;Ljava/lang/String;)Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->createItem(Ljava/lang/String;)Lcom/android/thememanager/view/LockscreenConfigSettings$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/thememanager/view/LockscreenConfigSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/thememanager/view/LockscreenConfigSettings;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/view/LockscreenConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/thememanager/view/LockscreenConfigSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static containConfigFile(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getConfigFileStreamFromCurrentTheme(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 105
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const/4 v1, 0x1

    .line 112
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "rootScreen"
    .parameter "group"

    .prologue
    .line 191
    if-nez p2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    const-string v1, "text"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    const-string v1, "summary"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v1, 0x0

    new-instance v2, Lcom/android/thememanager/view/LockscreenConfigSettings$2;

    invoke-direct {v2, p0, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$2;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Landroid/preference/PreferenceCategory;)V

    invoke-static {p2, v1, v2}, Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils;->traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;)V

    goto :goto_0
.end method

.method private createItem(Ljava/lang/String;)Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 211
    const-string v0, "StringInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    .line 224
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const-string v0, "CheckBox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Lcom/android/thememanager/view/LockscreenConfigSettings$CheckboxItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$CheckboxItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 215
    :cond_1
    const-string v0, "NumberInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "StringChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    new-instance v0, Lcom/android/thememanager/view/LockscreenConfigSettings$StringChoiceItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$StringChoiceItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v0, "NumberChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    new-instance v0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    goto :goto_0

    .line 221
    :cond_4
    const-string v0, "AppPicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    new-instance v0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 224
    goto :goto_0
.end method

.method private createPreferenceScreen()V
    .locals 9

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 157
    .local v6, rootScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v6}, Lcom/android/thememanager/view/LockscreenConfigSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 159
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 162
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 163
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getConfigFileStreamFromCurrentTheme(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v4

    .line 164
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 188
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 167
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 168
    .local v5, root:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_0

    .line 170
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Config"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    const-string v7, "Group"

    new-instance v8, Lcom/android/thememanager/view/LockscreenConfigSettings$1;

    invoke-direct {v8, p0, v6}, Lcom/android/thememanager/view/LockscreenConfigSettings$1;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Landroid/preference/PreferenceScreen;)V

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils;->traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 179
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    .line 180
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 182
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 184
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 186
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ensureConfigFolder()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sLockstyleSDCardConfigDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private getAppliedSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    const-wide/16 v1, 0x1000

    invoke-static {p0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->loadUserPreferencePath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->getLockstyleSDCardConfigPathFromThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getConfigFileStreamFromCurrentTheme(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 4
    .parameter "context"

    .prologue
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, configName:Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 148
    .local v1, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v1, :cond_0

    .line 149
    const-string v0, "config.xml"

    .line 150
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 152
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNextRequestCode()I
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mNextRequestCode:I

    return v0
.end method

.method private getRequestCodeObj(I)Ljava/lang/Object;
    .locals 2
    .parameter "code"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private putRequestCodeObj(ILjava/lang/Object;)V
    .locals 2
    .parameter "code"
    .parameter "obj"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void
.end method

.method private saveAndApply()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mConfigPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-virtual {v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->save()Z

    .line 132
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getAppliedSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/LockscreenConfigFile;->save(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getRequestCodeObj(I)Ljava/lang/Object;

    move-result-object v1

    .line 540
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 541
    instance-of v2, v1, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 542
    check-cast v0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;

    .line 543
    .local v0, item:Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;
    invoke-virtual {v0, p2, p3}, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->saveAndApply()V

    .line 548
    .end local v0           #item:Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->containConfigFile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->finish()V

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->ensureConfigFolder()V

    .line 87
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getLockstyleAppliedConfigFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mConfigPath:Ljava/lang/String;

    .line 88
    new-instance v0, Lmiui/app/screenelement/util/LockscreenConfigFile;

    invoke-direct {v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    .line 89
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;

    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/LockscreenConfigFile;->load(Ljava/lang/String;)Z

    .line 90
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->createPreferenceScreen()V

    .line 92
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->saveAndApply()V

    .line 142
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->finish()V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 124
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->saveAndApply()V

    .line 125
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;

    .line 527
    .local v0, item:Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    if-nez v0, :cond_1

    .line 528
    const/4 v2, 0x0

    .line 534
    :cond_0
    :goto_0
    return v2

    .line 530
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    move-result v2

    .line 531
    .local v2, ret:Z
    if-eqz v2, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->saveAndApply()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;

    .line 554
    .local v0, item:Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    if-nez v0, :cond_0

    .line 555
    const/4 v2, 0x0

    .line 557
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;->onClick()Z

    move-result v2

    goto :goto_0
.end method
